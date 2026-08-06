-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Data Varchar2(7) -- String
SET     @Data = 'Data 10'
DECLARE @Data_1 Varchar2(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	t1."Id",
	t1."Data"
FROM
	(
		SELECT 10 AS "Id", :Data AS "Data" FROM sys.dual
		UNION ALL
		SELECT 11, :Data_1 FROM sys.dual) t1

