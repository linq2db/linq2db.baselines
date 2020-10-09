BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE AsyncDataTable
(
	Id Int NOT NULL,

	CONSTRAINT PK_AsyncDataTable PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO AsyncDataTable (Id) VALUES (1)
	INTO AsyncDataTable (Id) VALUES (2)
	INTO AsyncDataTable (Id) VALUES (3)
	INTO AsyncDataTable (Id) VALUES (4)
	INTO AsyncDataTable (Id) VALUES (5)
	INTO AsyncDataTable (Id) VALUES (6)
	INTO AsyncDataTable (Id) VALUES (7)
	INTO AsyncDataTable (Id) VALUES (8)
	INTO AsyncDataTable (Id) VALUES (9)
	INTO AsyncDataTable (Id) VALUES (10)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 2

SELECT
	CASE WHEN EXISTS(
		SELECT 
			*
		FROM
			AsyncDataTable c_1
		WHERE
			c_1.Id = :Id
	) THEN 1 ELSE 0 END
FROM SYS.DUAL

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE AsyncDataTable

