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

