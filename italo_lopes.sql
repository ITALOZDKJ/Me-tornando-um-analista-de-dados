-- Questão 1
-- Solução com like:
select * from hr.employees 
where first_name not like 'A%' 
and first_name not like 'E%' 
and first_name not like 'I%' 
and first_name not like 'O%' 
and first_name not like 'U%'
ORDER BY first_name;

-- Solução com expressão regular:

select * from hr.employees where REGEXP_LIKE(first_name, '^[^aeiou]','i') order by First_name;


-- Questão 2

    
SET SERVEROUTPUT ON
DECLARE

    resposta varchar2(2);
    senha_teste varchar2(20);
begin
    senha_teste := '12345DEEs';
    if regexp_like(senha_teste,'^\S{5,10}$','i')  
    then resposta:= 1;
    else resposta := 0;
    
    end if;
    
    DBMS_OUTPUT.PUT_LINE(resposta);

end
;


