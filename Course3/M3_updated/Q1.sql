SELECT NAME, SUM(EXTCOST) AS TOTAL_COST, RANK () OVER (ORDER BY SUM(EXTCOST) DESC) AS CUST_RANK
FROM INVENTORY_FACT F JOIN CUST_VENDOR_DIM C ON F.CUSTVENDORKEY = C.CUSTVENDORKEY
WHERE TRANSTYPEKEY = 5
GROUP BY NAME;
