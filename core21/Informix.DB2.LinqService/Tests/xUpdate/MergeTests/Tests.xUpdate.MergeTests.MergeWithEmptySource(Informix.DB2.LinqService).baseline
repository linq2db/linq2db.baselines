BeforeExecute
-- Informix.DB2 Informix

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
	Target.FirstName = Source.FirstName,
	Target.LastName = Source.LastName,
	Target.MiddleName = Source.MiddleName,
	Target.Gender = Source.Gender

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

