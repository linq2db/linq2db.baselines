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
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DynamicChild

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DynamicParent

