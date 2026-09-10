-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 10
DECLARE @Data Varchar2(7) -- String
SET     @Data = 'Data 10'
DECLARE @Id_1 Int32
SET     @Id_1 = 11
DECLARE @Data_1 Varchar2(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	t1."Id",
	t1."Data"
FROM
	(
		SELECT :Id AS "Id", :Data AS "Data" FROM sys.dual
		UNION ALL
		SELECT :Id_1, :Data_1 FROM sys.dual) t1

