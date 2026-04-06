-- DuckDB

CREATE TEMPORARY TABLE MergeTemp
(
	ID   INTEGER,
	Name VARCHAR(20),

	PRIMARY KEY (ID)
)

INSERT BULK MergeTemp(ID, Name)

-- DuckDB

INSERT INTO MergeTemp AS t1
(
	ID,
	Name
)
VALUES
(
	(
		SELECT
			t.ID
		FROM
			MergeTemp t
		WHERE
			t.Name = 'John'
	),
	'John II'
)
ON CONFLICT (ID) DO UPDATE SET
	ID = t1.ID,
	Name = t1.Name

-- DuckDB

DROP TABLE IF EXISTS MergeTemp

