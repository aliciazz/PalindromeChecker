
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
  String lower = word.toLowerCase();
  
  String noSpace = new String();
  for (int i =0; i< lower.length(); i++){
    if (!lower.substring(i, i+1).equals(" "))
      noSpace = noSpace + lower.substring(i, i+1);
  }

String noPunc = new String();
  for (int i = 0; i < noSpace.length(); i++){
    if(Character.isLetter(noSpace.charAt(i)) == true)
      noPunc = noPunc + noSpace.charAt(i);
  }

  String backward = new String();
  for (int i = noPunc.length()-1; i>=0; i--) {
    backward = backward + noPunc.charAt(i);
  }
  

  if (noPunc.equals(backward))
    return true;
  else 
    return false;
}

