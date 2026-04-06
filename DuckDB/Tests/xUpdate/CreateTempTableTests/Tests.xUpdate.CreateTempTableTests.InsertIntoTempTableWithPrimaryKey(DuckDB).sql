-- DuckDB

CREATE TEMPORARY TABLE TableWithPrimaryKey2
(
	"Key" INTEGER,

	PRIMARY KEY ("Key")
)

INSERT BULK TableWithPrimaryKey2(Key)

-- DuckDB

DROP TABLE IF EXISTS TableWithPrimaryKey2

