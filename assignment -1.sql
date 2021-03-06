/*1q*/
SELECT ENAME, JOB
FROM EMP
WHERE JOB = 'CLERK';

/*2q*/
SELECT ENAME, JOB
FROM EMP
WHERE JOB IN ('CLERK','MANAGER');
/*3q*/
SELECT CONVERT(DATE,getdate()) as 'current date';

/*4q*/
SELECT ENAME,SAL
FROM EMP
WHERE SAL BETWEEN '500' AND '1000';
/*5q*/
SELECT ENAME,HIREDATE
FROM EMP
WHERE MONTH(HIREDATE)=12;
/*6q*/
SELECT ENAME,SAL
FROM EMP
WHERE ENAME NOT BETWEEN '1000' AND '2500'
ORDER BY SAL;
/*7q*/
SELECT ENAME,SAL
FROM EMP
WHERE SAL IN(800,950,3000,5000);
/*8q*/
SELECT ENAME
FROM EMP
WHERE ENAME LIKE'_L%';
/*9q*/
SELECT ENAME
FROM EMP
WHERE ENAME LIKE'%D';
/*10q*/
SELECT ENAME
FROM EMP
WHERE LEN(ENAME)=5;
/*11q*/
SELECT ENAME
FROM EMP
WHERE ENAME LIKE'T%R';
/*12q*/
SELECT ENAME
FROM EMP
WHERE ENAME LIKE'%A%';
/*13q*/
SELECT ENAME,HIREDATE
FROM EMP
WHERE DAY(HIREDATE)<19;
/*14q*/
SELECT ENAME,EMPNO
FROM EMP 
WHERE ENAME='JAMES';
/*15q*/
SELECT ENAME,SAL
FROM EMP
WHERE ENAME='KING';
/*16q*/
SELECT ENAME,JOB
FROM EMP
WHERE JOB='PRESIDENT';
/*17q*/
SELECT *
FROM EMP
WHERE JOB='MANAGER';
/*18q*/
SELECT ENAME,COMM
FROM EMP
WHERE COMM IS NOT NULL;
/*19q*/
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE<'01-APR-1981';
/*20q*/
SELECT ENAME,SAL
FROM EMP
WHERE ENAME IN('KING','BLAKE','FORD','SMITH');
/*21q*/
SELECT ENAME,SAL
FROM EMP
WHERE ENAME IN('KING','BLAKE','FORD','SMITH');
/*22q*/
SELECT ENAME,JOB,SAL 
FROM EMP
WHERE SAL<3500;
/*23q*/
SELECT *
FROM EMP
WHERE JOB='CLERK';
/*24q*/
SELECT ENAME,SAL,SAL*12 AS'ANNSAL'
FROM EMP;
/*25q*/
SELECT (SAL*12)*20/100 AS ANNUALSAL 
FROM EMP
WHERE ENAME = 'FORD';
/*26q*/
SELECT SUM(SAL) AS 'TOTALSAL', DEPTNO
FROM EMP
GROUP BY DEPTNO;
/*27q*/
SELECT DEPTNO,MIN(SAL) AS MINSAL
FROM EMP
WHERE DEPTNO='10'
GROUP BY DEPTNO;
/*28q*/
SELECT JOB,AVG(SAL) AS 'AVGSALMAN'
FROM EMP
WHERE JOB='MANAGER'
GROUP BY JOB
/*29q*/
SELECT JOB,SUM(SAL) AS 'TOTALSALSALMAN'
FROM EMP
WHERE JOB='SALESMAN'
GROUP BY JOB;
/*30q*/
SELECT DEPTNO,AVG(SAL) AS'LOWEST AVG SALARY'
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL)<(SELECT AVG(SAL) FROM EMP);
/*31q*/
SELECT JOB,COUNT(JOB) AS 'INEACHDEPT'
FROM EMP
GROUP BY JOB;
/*32q*/
select max(sal) as 'maxsal',job from emp
where job='analyst'
group by job;
/*33q*/
SELECT MAX(COMM) AS 'HIGHCOMMPAID'
FROM EMP;
/*34q*/
SELECT COUNT(DISTINCT DEPTNO) AS 'TOTDEPT'
FROM EMP;
/*35q*/
SELECT ENAME
FROM EMP
WHERE ENAME LIKE'__L%';