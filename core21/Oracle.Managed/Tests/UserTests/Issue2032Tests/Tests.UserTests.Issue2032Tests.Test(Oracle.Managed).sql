BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Issue2032Table
(
	Id       Int            NOT NULL,
	Decimal1 Decimal(10, 4) NOT NULL,
	Decimal2 Decimal(10, 4)     NULL,
	Decimal3 Decimal(10, 4)     NULL,
	Int1     Int                NULL,
	Int2     Int                NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO Issue2032Table (Id, Decimal1, Decimal2, Decimal3, Int1, Int2) VALUES (1,123.456,NULL,NULL,NULL,NULL)
	INTO Issue2032Table (Id, Decimal1, Decimal2, Decimal3, Int1, Int2) VALUES (2,-123.456,678.903,3523.2352,-123,345)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	r.Id,
	r.Decimal1,
	r.Decimal2,
	Nvl(r.Decimal3, 0.1),
	r.Int1,
	Nvl(r.Int2, 22)
FROM
	Issue2032Table r
ORDER BY
	r.Id

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Issue2032Table

