BeforeExecute
-- Informix.DB2 Informix (asynchronously)

MERGE INTO Person Target
USING (
	SELECT NULL::Int, NULL::NVarChar(255), NULL::NVarChar(255), NULL::NVarChar(255), NULL::Char(1)
	FROM table(set{1})	WHERE 1 = 0
)
 Source
(
	ID,
	FirstName,
	LastName,
	MiddleName,
	Gender
)
ON (Target.PersonID = Source.ID)

WHEN MATCHED THEN
UPDATE
SET
	FirstName = Source.FirstName,
	LastName = Source.LastName,
	MiddleName = Source.MiddleName,
	Gender = Source.Gender

WHEN NOT MATCHED THEN
INSERT
(
	FirstName,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	Source.FirstName,
	Source.LastName,
	Source.MiddleName,
	Source.Gender
)

