BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE dbo."Table_3056"
(
	"Id"          Int          GENERATED ALWAYS AS IDENTITY NOT NULL,
	"Name"        VarChar(100)                                  NULL,
	"Description" VarChar(500)                                  NULL,

	CONSTRAINT "PK_Table_3056" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO dbo."Table_3056"
(
	"Name",
	"Description"
)
VALUES
('n1','d0'),
('n2','d00')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE dbo."Table_3056"';
END

