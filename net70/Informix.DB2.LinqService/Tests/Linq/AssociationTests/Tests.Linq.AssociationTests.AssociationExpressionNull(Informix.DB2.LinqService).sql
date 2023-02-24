BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NotNullParent

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS NotNullParent
(
	ID Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

INSERT INTO NotNullParent
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2

INSERT INTO NotNullParent
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NotNullChild

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS NotNullChild
(
	ParentID Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1

INSERT INTO NotNullChild
(
	ParentID
)
VALUES
(
	@ParentID
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	a_ChildOuter.ParentID
FROM
	NotNullParent p
		LEFT JOIN NotNullChild a_ChildOuter ON p.ID = a_ChildOuter.ParentID
ORDER BY
	p.ID

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NotNullChild

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NotNullParent

