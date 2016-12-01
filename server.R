library(shiny)
library(stringr)


shinyServer(
  
  function(input, output){
    
    
    output$text1<-renderText({
      
       
      
      
      freq_n<-read.table(file = "freq_n.txt",sep = ",", header = TRUE, stringsAsFactors = FALSE)
      
      #Cargar funcion
      
      
      predictor<-function(entry){
        
        entry<-tolower(entry)
        entry<-paste0(entry," ")
        
        
        #Eliminar las que no inician con ""
        
        entry_regular<-paste0("^",entry)
        
        freq_2<-freq_n[grepl(entry_regular,freq_n$word),]
        
        
        
        if(length(freq_2$word)==0){
          
          s<-NA
        }else{  
          
          #Mayor probable
          
          mayorferq<-max(freq_2$freq)
          
          compare<-NULL
          
          i<-1
          while(i<length(freq_2$word)+1){
            if(mayorferq==freq_2$freq[i]){
              
              compare<-freq_2$word[i]
            }
            
            i<-i+1
          }
          
          s<-sub(entry,"",compare)
          s<-str_trim(s)
          
          
        }
        
        return(s)
        
      }#fin function
      
      entry<-input$entry
      entry<-word(entry,-1)
      
      predictor(entry)
      
      
      
      })#output$text1
    
    
  }#fin function(input, output)
  
)#fin shinyServer
