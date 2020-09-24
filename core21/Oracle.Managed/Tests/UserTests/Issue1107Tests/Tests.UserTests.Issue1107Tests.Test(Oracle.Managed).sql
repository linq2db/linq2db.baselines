BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Issue1107TB
(
	Id       Int       NOT NULL,
	TestDate timestamp NOT NULL,

	CONSTRAINT PK_Issue1107TB PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO Issue1107TB (Id, TestDate) VALUES (0,TO_TIMESTAMP('2018-01-01 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'))
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Issue1107TB

