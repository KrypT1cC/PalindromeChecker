public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newWord = onlyLetters(word);
  if (reverse(newWord).equals(onlyLetters(word)))
  {
    return true;
  }
  else
  {
    return false;
  }
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length(); i > 0; i--)
    {
      sNew += str.substring(i - 1, i);
    }
    return sNew;
}
public String onlyLetters(String sString){
  String newString = "";
  for (int i = 0; i < sString.length(); i++)
  {
    if (Character.isLetter(sString.charAt(i)))
    {
      newString += sString.substring(i, i+1);
    }
  }
  return newString.toLowerCase();
}
