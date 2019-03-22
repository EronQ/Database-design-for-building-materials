
/*  Pyet�sor�t  */

USE DEPO;

/*  Nj� pyet�sor q� merr t� dh�na nga nj� tabel�.  */

-- Te shfaqen produktet me �mim me te larte se 20.0 $ per njesi. 
SELECT * 
FROM Produktet
WHERE �mimi > 20;



/* Dy pyet�sor q� marrin t� dh�na nga dy tabela. */

-- Te shfaqen emri dhe mbiemri i punetorit qe punon ne qytetin ku ai jeton.
SELECT Emri, Mbiemri
FROM Pun�tor�t p, Dega d
WHERE p.Qyteti = d.Qyteti;

-- Te shfaqen produktet qe jane te prodhuara jashte vendit.
SELECT pr.* ,p.Shteti
FROM Produktet pr INNER JOIN Prodhuesit p
ON pr.ID_Prodhuesi = p.ID_Prodhuesi
WHERE p.Shteti <> 'Kosove';

/* Tre pyet�sor q� marrin t� dh�na nga tre tabela. */

-- Gjej te gjitha produktet te prodhuara ne Kosove te renditura sipas sasise neper deg�?
SELECT pr.ID_Produkti, pr.Emri, p.Shteti, pd.Sasia
FROM (Prodhuesit p INNER JOIN Produktet pr  ON p.ID_Prodhuesi = pr.ID_Prodhuesi ) 
INNER JOIN Produktet_ne_dege pd ON pr.ID_Produkti = pd.ID_Produkti
WHERE p.Shteti = 'Kosove' 
ORDER BY pd.Sasia DESC

 -- Te shfaqen emrat e produkteve te porositura me shume se 2 here ne vitin 2016.
 SELECT Emri
 FROM Produktet prod
 WHERE  EXISTS  (
            SELECT pp.ID_Produkti, count(*) 
            FROM (Produktet pr INNER JOIN Produktet_e_porositura pp 
			ON pr.ID_Produkti = pp.ID_Produkti ) INNER JOIN Porosit� po ON pp.ID_Porosia = po.ID_Porosia 
			WHERE year(po.Data) = '2016' AND prod.ID_Produkti = pp.ID_Produkti
			GROUP BY pp.ID_Produkti
			HAVING count(*) > 2
 );

 -- Te shfaqet porosia ku klienti dhe punetori jane nga qytete te ndryshme.
 SELECT ID_Porosia
 FROM (Klient�t k INNER JOIN Porosit� po ON k.ID_Klienti = po.ID_Klienti )
 INNER JOIN Pun�tor�t pu ON po.ID_Pun�tori = pu.ID_Pun�tori
 WHERE k.Qyteti <> pu.Qyteti;

 /* Nj� pyet�sor q� merr t� dh�na nga me shume se tre tabela. */

 -- Te shfaqen produktet e porositura ne qytetin e Prishtines.
 SELECT pr.*
 FROM Produktet pr, Produktet_e_porositura pp, Porosit� po, Dega d
 WHERE pr.ID_Produkti = pp.ID_Produkti AND pp.ID_Porosia = po.ID_Porosia AND po.ID_Dega = d.ID_Dega 
 AND d.Qyteti = 'Prishtine';







  

