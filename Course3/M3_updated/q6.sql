SELECT SECONDITEMID, SUM(EXTCOST) AS TOTAL_COST, RATIO_TO_REPORT (SUM(EXTCOST)) OVER () AS RATIO_TO_REPORT
FROM INVENTORY_FACT F JOIN ITEM_MASTER_DIM I ON F.ITEMMASTERKEY = I.ITEMMASTERKEY
WHERE TRANSTYPEKEY = 1
GROUP BY SECONDITEMID
ORDER BY 2 DESC;