public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here  
  String sWord = new String();
  for(int i = 0;i<word.length();i++)
    if(word.charAt(i) != ' ')
      sWord = sWord + (word.toLowerCase()).charAt(i);
  String newWord = new String();
  for(int i = 0;i<sWord.length();i++)
  {
    if(Character.isLetter(sWord.charAt(i)) == true)
      newWord = newWord + sWord.charAt(i);
  }


  for(int i = 0; i < (newWord.length())/2;i++)
    if(newWord.charAt(i)!=newWord.charAt((newWord.length()-1)-i))
    return false;
  return true;
}

