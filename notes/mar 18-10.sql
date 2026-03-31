-- left(string,no_of_characters)
select left("besant technologies",6);
-- right(string,no_of_char)
select right("besant technologies",5);
-- mid(string,start_position,[no_of_char])
select mid("besant technologies",8,4);
-- substr or substring(string,start_position,[no_of_char])
select substr("python programming",5,2);
select substr('python programming' from 5 for 2);
select mid('python programming', 8);
select substring('python programming',5);
-- instr(string,substring)
select instr("besant technologies","t");
select instr("whatever happen,let it happen","happen");
-- locate(substring,string,[searching_position])
select locate("happen",
"whatever happen,let it happen",
locate("happen",
"whatever happen,let it happen")+1);

select substring("besant Technologies",
instr("besant Technologies","Tech"),
length("tech")) as name;

-- reverse(string)
select reverse("apple");
-- repeat(string,how many times)
select repeat("apple ",5);
-- replace(string,old_text,new_text)
select replace("mysql","my","pl");
select replace("whatever happen,let it happen",
"Happen","occurs");
-- lpad(string,length,pad_text)
select lpad("AB",8,"#"); -- ######AB
select rpad("ZZZ",6,"$"); -- ZZZ$$$
select replace("mysql","My","pl");
-- replace is a case sensitive function






