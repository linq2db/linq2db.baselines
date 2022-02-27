BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE aa
(
	bb Int          NOT NULL,
	cc VarChar(255)     NULL,

	CONSTRAINT PK_aa PRIMARY KEY (bb)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @cc Varchar2(5) -- String
SET     @cc = 'hallo'
DECLARE @bb Int32
SET     @bb = 99

INSERT INTO aa
(
	cc,
	bb
)
VALUES
(
	:cc,
	:bb
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.cc,
	t1.bb
FROM
	aa t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE aa

