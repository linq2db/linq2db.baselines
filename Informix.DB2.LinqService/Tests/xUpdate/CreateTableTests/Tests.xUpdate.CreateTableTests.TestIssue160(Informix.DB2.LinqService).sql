BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE aa
(
	bb Int           NOT NULL,
	cc NVarChar(255)     NULL,

	PRIMARY KEY (bb)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @bb Integer(4) -- Int32
SET     @bb = 99
DECLARE @cc VarChar(5) -- String
SET     @cc = 'hallo'

INSERT INTO aa
(
	bb,
	cc
)
VALUES
(
	@bb,
	@cc
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.bb,
	t1.cc
FROM
	aa t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE aa

