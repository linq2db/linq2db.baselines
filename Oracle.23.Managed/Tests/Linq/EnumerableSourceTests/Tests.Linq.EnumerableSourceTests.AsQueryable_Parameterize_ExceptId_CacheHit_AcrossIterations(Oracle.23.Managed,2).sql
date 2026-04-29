-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Data Varchar2(7) -- String
SET     @Data = 'Data 20'
DECLARE @Data_1 Varchar2(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Data_2 Varchar2(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	t1."Id",
	t1."Data"
FROM
	(
		SELECT 20 AS "Id", :Data AS "Data" FROM sys.dual
		UNION ALL
		SELECT 21, :Data_1 FROM sys.dual
		UNION ALL
		SELECT 22, :Data_2 FROM sys.dual) t1

