-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 0
DECLARE @Data Varchar2(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id_1 Int32
SET     @Id_1 = 1
DECLARE @Data_1 Varchar2(6) -- String
SET     @Data_1 = 'Data 1'

SELECT
	t1."Id",
	t1."Data"
FROM
	(
		SELECT :Id AS "Id", :Data AS "Data" FROM sys.dual
		UNION ALL
		SELECT :Id_1, :Data_1 FROM sys.dual) t1
ORDER BY
	t1."Id"

