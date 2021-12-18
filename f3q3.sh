  function oneDigitnum ()
    {
        
        return (num >= 0 && num < 10);
    }
      
   
    function isPalUtil(num , dupNum)
    {
       
        if (oneDigitnum ())
            return (num == (dupNum) % 10);
      
       
        if (!isPalUtil(parseInt(num/10), dupNum))
            return false;
      
        
        dupNum = parseInt(dupNum/10);
      
        
        return (num % 10 == (dupNum) % 10);
    }
      
    
    function isPal(num)
    {
        
        if (num < 0)
           num = -num;
      
       
        var dupNum = num; 
      
        return isPalUtil(num, dupNum);
    }
      
    
    function printPalPrimesLessThanN(n)
    {
       
        var prime = Array.from({length: n+1}, (_, i) => true);
         
        for (p = 2; p*p <= n; p++)
        {
           
            if (prime[p])
            {
                
                for (i = p*2; i <= n; i += p){
                    prime[i] = false;}
            }
        }
      
       
        for (p = 2; p <= n; p++){
      
           
           if (prime[p] && isPal(p)){
              document.write(p + " ");
              }
           }
    }
     
    
    var n = 100;
    document.write('Palindromic primes smaller than or equal to '+n+' are :<br>');
    printPalPrimesLessThanN(n);