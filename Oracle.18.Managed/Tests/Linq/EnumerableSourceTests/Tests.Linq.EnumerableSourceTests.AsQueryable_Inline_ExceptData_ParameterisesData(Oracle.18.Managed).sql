-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Data Varchar2(9) -- String
SET     @Data = 'Data 7777'
DECLARE @Data_1 Varchar2(9) -- String
SET     @Data_1 = 'Data 7778'

SELECT
	t1."Id",
	t1."Data"
FROM
	(
		SELECT 7777 AS "Id", :Data AS "Data" FROM sys.dual
		UNION ALL
		SELECT 7778, :Data_1 FROM sys.dual) t1
ORDER BY
	t1."Id"

