﻿BeforeExecute
-- Firebird3 Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @FirstName_1 VarChar(25) -- String
SET     @FirstName_1 = 'UpdateColumnFilterUpdated'

SELECT FIRST @take
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @FirstName_1

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"Person"."FirstName" = @FirstName,
	"Person"."LastName" = @LastName,
	"Person"."Gender" = @Gender
WHERE
	"Person"."PersonID" = @ID

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @FirstName_1 VarChar(25) -- String
SET     @FirstName_1 = 'UpdateColumnFilterUpdated'

SELECT FIRST @take
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @FirstName_1

BeforeExecute
-- Firebird3 Firebird
DECLARE @newName VarChar(25) -- String
SET     @newName = 'UpdateColumnFilterUpdated'

DELETE FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @newName

