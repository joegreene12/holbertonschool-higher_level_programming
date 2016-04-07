char *rot13(char *v){

  int i;
  int tmp = 0;

  for(i=0; v[i] != '\0'; i++){
    if(v[i]>= 'A' && v[i] <= 'Z'){
      if(v[i] + 13 >= 'Z'){
	tmp = (v[i] + 13) - 'Z';
	v[i]= tmp + 'A';
}
      else{
	v[i] = v[i] +13;
}}
  else if (v[i]>= 'a' && v[i]<= 'z'){
	if(v[i]+13 >='z'){
	  tmp = v[i] +13 - 'z';
	  v[i] = tmp + 'a';}
	else{
	  v[i] = v[i] + 13;}
      }
    }
    return(v);
  }
