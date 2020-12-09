mysql> SELECT titol_peli, recaudacio_peli FROM PELLICULES WHERE recaudacio_peli = (SELECT MIN(recaudacio_peli) FROM PELLICULES);
+-------------+-----------------+
| titol_peli  | recaudacio_peli |
+-------------+-----------------+
| Mar adentro |        38535221 |
+-------------+-----------------+
1 row in set (0.00 sec)

mysql> SELECT titol_peli FROM PELLICULES INNER JOIN recaudacio_peli WHERE recaudacio_peli = (SELECT MIN(recaudacio_peli) FROM PELLICULES);
ERROR 1146 (42S02): Table 'videoclub.recaudacio_peli' doesn't exist
mysql> SELECT titol_peli FROM PELLICULES INNER JOIN PELLICULES.recaudacio_peli WHERE recaudacio_peli = (SELECT MIN(recaudacio_peli) FROM PELLICULES);
ERROR 1146 (42S02): Table 'PELLICULES.recaudacio_peli' doesn't exist
