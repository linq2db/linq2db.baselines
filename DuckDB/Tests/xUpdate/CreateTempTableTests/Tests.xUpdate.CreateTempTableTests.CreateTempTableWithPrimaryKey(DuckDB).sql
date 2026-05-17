-- DuckDB

CREATE TEMPORARY TABLE TableWithPrimaryKey
(
	"Key" INTEGER,

	PRIMARY KEY ("Key")
)

-- DuckDB

DROP TABLE IF EXISTS TableWithPrimaryKey

