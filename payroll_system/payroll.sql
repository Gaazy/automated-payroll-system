use payroll_system;

insert into payroll(salary_paid, tax, allowance) 
select ((base_salary + ot_paid + other_pay)),
(((base_salary + ot_paid + other_pay) - regular_gross_paid)*0.18),
(((base_salary + ot_paid + other_pay) - regular_gross_paid)*0.82) from salary;

select * from payroll;
 