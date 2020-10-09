BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE aa
(
	bb Int           NOT NULL,
	cc NVarChar(255)     NULL,

	PRIMARY KEY (bb)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @cc VarChar(5) -- String
SET     @cc = 'hallo'
DECLARE @bb Integer(4) -- Int32
SET     @bb = 99

INSERT INTO aa
(
	cc,
	bb
)
VALUES
(
	@cc,
	@bb
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.cc, 
	t1.bb
FROM
	aa t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE aa

