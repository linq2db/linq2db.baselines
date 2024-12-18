BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DynamicParent

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DynamicParent
(
	ID SERIAL  NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DynamicChild

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DynamicChild
(
	ID       SERIAL  NOT NULL,
	ParentID Int     NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	it.ID
FROM
	DynamicParent it
		LEFT JOIN DynamicChild a_Child ON it.ID = a_Child.ParentID
WHERE
	a_Child.ID = 123 AND a_Child.ID IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DynamicChild

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DynamicParent

