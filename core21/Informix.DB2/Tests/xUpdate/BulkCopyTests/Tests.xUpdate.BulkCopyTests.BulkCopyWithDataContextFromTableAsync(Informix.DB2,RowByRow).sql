BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE SimpleBulkCopyTable
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 20

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 30

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SimpleBulkCopyTable

