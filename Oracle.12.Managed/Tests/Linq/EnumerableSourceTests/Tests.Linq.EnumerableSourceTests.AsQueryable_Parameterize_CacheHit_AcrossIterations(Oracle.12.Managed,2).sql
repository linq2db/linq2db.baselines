-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 20
DECLARE @Data Varchar2(7) -- String
SET     @Data = 'Data 20'
DECLARE @Id_1 Int32
SET     @Id_1 = 21
DECLARE @Data_1 Varchar2(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Id_2 Int32
SET     @Id_2 = 22
DECLARE @Data_2 Varchar2(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	t1."Id",
	t1."Data"
FROM
	(
		SELECT :Id AS "Id", :Data AS "Data" FROM sys.dual
		UNION ALL
		SELECT :Id_1, :Data_1 FROM sys.dual
		UNION ALL
		SELECT :Id_2, :Data_2 FROM sys.dual) t1

