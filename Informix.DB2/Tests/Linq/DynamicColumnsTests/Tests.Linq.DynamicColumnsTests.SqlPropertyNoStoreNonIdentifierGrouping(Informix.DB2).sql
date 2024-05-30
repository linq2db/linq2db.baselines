BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DynamicTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DynamicTable
(
	ID               SERIAL  NOT NULL,
	"Not Identifier" Int     NOT NULL,
	"Some Value"     Int     NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @NotIdentifier Integer(4) -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Integer(4) -- Int32
SET     @Value = 5

INSERT INTO DynamicTable
(
	"Not Identifier",
	"Some Value"
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @NotIdentifier Integer(4) -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Integer(4) -- Int32
SET     @Value = 5

INSERT INTO DynamicTable
(
	"Not Identifier",
	"Some Value"
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	g_1."Not Identifier",
	COUNT(*),
	SUM(g_1."Some Value")
FROM
	DynamicTable g_1
GROUP BY
	g_1."Not Identifier"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DynamicTable

