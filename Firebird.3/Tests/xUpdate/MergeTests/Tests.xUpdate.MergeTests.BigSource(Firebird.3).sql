-- Firebird.3 Firebird3

DELETE FROM
	"TestMerge1" "t1"

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 2
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer -- Int32
SET     @Field4 = 203

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 6
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Firebird.3 Firebird3

DELETE FROM
	"TestMerge2" "t1"

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 7
DECLARE @Field4 Integer -- Int32
SET     @Field4 = 214

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Field1 Integer -- Int32
SET     @Field1 = 10
DECLARE @Field2 Integer -- Int32
SET     @Field2 = 4
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
SET     @Field4 = 216

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Firebird.3 Firebird3

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT 5 AS "Id", 6 AS "Field1", 7 AS "Field2", 9 AS "Field4" FROM rdb$database
	UNION ALL
	SELECT 6, 7, 8, 10 FROM rdb$database
	UNION ALL
	SELECT 7, 8, 9, 11 FROM rdb$database
	UNION ALL
	SELECT 8, 9, 10, 12 FROM rdb$database
	UNION ALL
	SELECT 9, 10, 11, 13 FROM rdb$database
	UNION ALL
	SELECT 10, 11, 12, 14 FROM rdb$database
	UNION ALL
	SELECT 11, 12, 13, 15 FROM rdb$database
	UNION ALL
	SELECT 12, 13, 14, 16 FROM rdb$database
	UNION ALL
	SELECT 13, 14, 15, 17 FROM rdb$database
	UNION ALL
	SELECT 14, 15, 16, 18 FROM rdb$database
	UNION ALL
	SELECT 15, 16, 17, 19 FROM rdb$database
	UNION ALL
	SELECT 16, 17, 18, 20 FROM rdb$database
	UNION ALL
	SELECT 17, 18, 19, 21 FROM rdb$database
	UNION ALL
	SELECT 18, 19, 20, 22 FROM rdb$database
	UNION ALL
	SELECT 19, 20, 21, 23 FROM rdb$database
	UNION ALL
	SELECT 20, 21, 22, 24 FROM rdb$database
	UNION ALL
	SELECT 21, 22, 23, 25 FROM rdb$database
	UNION ALL
	SELECT 22, 23, 24, 26 FROM rdb$database
	UNION ALL
	SELECT 23, 24, 25, 27 FROM rdb$database
	UNION ALL
	SELECT 24, 25, 26, 28 FROM rdb$database
	UNION ALL
	SELECT 25, 26, 27, 29 FROM rdb$database
	UNION ALL
	SELECT 26, 27, 28, 30 FROM rdb$database
	UNION ALL
	SELECT 27, 28, 29, 31 FROM rdb$database
	UNION ALL
	SELECT 28, 29, 30, 32 FROM rdb$database
	UNION ALL
	SELECT 29, 30, 31, 33 FROM rdb$database
	UNION ALL
	SELECT 30, 31, 32, 34 FROM rdb$database
	UNION ALL
	SELECT 31, 32, 33, 35 FROM rdb$database
	UNION ALL
	SELECT 32, 33, 34, 36 FROM rdb$database
	UNION ALL
	SELECT 33, 34, 35, 37 FROM rdb$database
	UNION ALL
	SELECT 34, 35, 36, 38 FROM rdb$database
	UNION ALL
	SELECT 35, 36, 37, 39 FROM rdb$database
	UNION ALL
	SELECT 36, 37, 38, 40 FROM rdb$database
	UNION ALL
	SELECT 37, 38, 39, 41 FROM rdb$database
	UNION ALL
	SELECT 38, 39, 40, 42 FROM rdb$database
	UNION ALL
	SELECT 39, 40, 41, 43 FROM rdb$database
	UNION ALL
	SELECT 40, 41, 42, 44 FROM rdb$database
	UNION ALL
	SELECT 41, 42, 43, 45 FROM rdb$database
	UNION ALL
	SELECT 42, 43, 44, 46 FROM rdb$database
	UNION ALL
	SELECT 43, 44, 45, 47 FROM rdb$database
	UNION ALL
	SELECT 44, 45, 46, 48 FROM rdb$database
	UNION ALL
	SELECT 45, 46, 47, 49 FROM rdb$database
	UNION ALL
	SELECT 46, 47, 48, 50 FROM rdb$database
	UNION ALL
	SELECT 47, 48, 49, 51 FROM rdb$database
	UNION ALL
	SELECT 48, 49, 50, 52 FROM rdb$database
	UNION ALL
	SELECT 49, 50, 51, 53 FROM rdb$database
	UNION ALL
	SELECT 50, 51, 52, 54 FROM rdb$database
	UNION ALL
	SELECT 51, 52, 53, 55 FROM rdb$database
	UNION ALL
	SELECT 52, 53, 54, 56 FROM rdb$database
	UNION ALL
	SELECT 53, 54, 55, 57 FROM rdb$database
	UNION ALL
	SELECT 54, 55, 56, 58 FROM rdb$database
	UNION ALL
	SELECT 55, 56, 57, 59 FROM rdb$database
	UNION ALL
	SELECT 56, 57, 58, 60 FROM rdb$database
	UNION ALL
	SELECT 57, 58, 59, 61 FROM rdb$database
	UNION ALL
	SELECT 58, 59, 60, 62 FROM rdb$database
	UNION ALL
	SELECT 59, 60, 61, 63 FROM rdb$database
	UNION ALL
	SELECT 60, 61, 62, 64 FROM rdb$database
	UNION ALL
	SELECT 61, 62, 63, 65 FROM rdb$database
	UNION ALL
	SELECT 62, 63, 64, 66 FROM rdb$database
	UNION ALL
	SELECT 63, 64, 65, 67 FROM rdb$database
	UNION ALL
	SELECT 64, 65, 66, 68 FROM rdb$database
	UNION ALL
	SELECT 65, 66, 67, 69 FROM rdb$database
	UNION ALL
	SELECT 66, 67, 68, 70 FROM rdb$database
	UNION ALL
	SELECT 67, 68, 69, 71 FROM rdb$database
	UNION ALL
	SELECT 68, 69, 70, 72 FROM rdb$database
	UNION ALL
	SELECT 69, 70, 71, 73 FROM rdb$database
	UNION ALL
	SELECT 70, 71, 72, 74 FROM rdb$database
	UNION ALL
	SELECT 71, 72, 73, 75 FROM rdb$database
	UNION ALL
	SELECT 72, 73, 74, 76 FROM rdb$database
	UNION ALL
	SELECT 73, 74, 75, 77 FROM rdb$database
	UNION ALL
	SELECT 74, 75, 76, 78 FROM rdb$database
	UNION ALL
	SELECT 75, 76, 77, 79 FROM rdb$database
	UNION ALL
	SELECT 76, 77, 78, 80 FROM rdb$database
	UNION ALL
	SELECT 77, 78, 79, 81 FROM rdb$database
	UNION ALL
	SELECT 78, 79, 80, 82 FROM rdb$database
	UNION ALL
	SELECT 79, 80, 81, 83 FROM rdb$database
	UNION ALL
	SELECT 80, 81, 82, 84 FROM rdb$database
	UNION ALL
	SELECT 81, 82, 83, 85 FROM rdb$database
	UNION ALL
	SELECT 82, 83, 84, 86 FROM rdb$database
	UNION ALL
	SELECT 83, 84, 85, 87 FROM rdb$database
	UNION ALL
	SELECT 84, 85, 86, 88 FROM rdb$database
	UNION ALL
	SELECT 85, 86, 87, 89 FROM rdb$database
	UNION ALL
	SELECT 86, 87, 88, 90 FROM rdb$database
	UNION ALL
	SELECT 87, 88, 89, 91 FROM rdb$database
	UNION ALL
	SELECT 88, 89, 90, 92 FROM rdb$database
	UNION ALL
	SELECT 89, 90, 91, 93 FROM rdb$database
	UNION ALL
	SELECT 90, 91, 92, 94 FROM rdb$database
	UNION ALL
	SELECT 91, 92, 93, 95 FROM rdb$database
	UNION ALL
	SELECT 92, 93, 94, 96 FROM rdb$database
	UNION ALL
	SELECT 93, 94, 95, 97 FROM rdb$database
	UNION ALL
	SELECT 94, 95, 96, 98 FROM rdb$database
	UNION ALL
	SELECT 95, 96, 97, 99 FROM rdb$database
	UNION ALL
	SELECT 96, 97, 98, 100 FROM rdb$database
	UNION ALL
	SELECT 97, 98, 99, 101 FROM rdb$database
	UNION ALL
	SELECT 98, 99, 100, 102 FROM rdb$database
	UNION ALL
	SELECT 99, 100, 101, 103 FROM rdb$database
	UNION ALL
	SELECT 100, 101, 102, 104 FROM rdb$database
	UNION ALL
	SELECT 101, 102, 103, 105 FROM rdb$database
	UNION ALL
	SELECT 102, 103, 104, 106 FROM rdb$database
	UNION ALL
	SELECT 103, 104, 105, 107 FROM rdb$database
	UNION ALL
	SELECT 104, 105, 106, 108 FROM rdb$database
	UNION ALL
	SELECT 105, 106, 107, 109 FROM rdb$database
	UNION ALL
	SELECT 106, 107, 108, 110 FROM rdb$database
	UNION ALL
	SELECT 107, 108, 109, 111 FROM rdb$database
	UNION ALL
	SELECT 108, 109, 110, 112 FROM rdb$database
	UNION ALL
	SELECT 109, 110, 111, 113 FROM rdb$database
	UNION ALL
	SELECT 110, 111, 112, 114 FROM rdb$database
	UNION ALL
	SELECT 111, 112, 113, 115 FROM rdb$database
	UNION ALL
	SELECT 112, 113, 114, 116 FROM rdb$database
	UNION ALL
	SELECT 113, 114, 115, 117 FROM rdb$database
	UNION ALL
	SELECT 114, 115, 116, 118 FROM rdb$database
	UNION ALL
	SELECT 115, 116, 117, 119 FROM rdb$database
	UNION ALL
	SELECT 116, 117, 118, 120 FROM rdb$database
	UNION ALL
	SELECT 117, 118, 119, 121 FROM rdb$database
	UNION ALL
	SELECT 118, 119, 120, 122 FROM rdb$database
	UNION ALL
	SELECT 119, 120, 121, 123 FROM rdb$database
	UNION ALL
	SELECT 120, 121, 122, 124 FROM rdb$database
	UNION ALL
	SELECT 121, 122, 123, 125 FROM rdb$database
	UNION ALL
	SELECT 122, 123, 124, 126 FROM rdb$database
	UNION ALL
	SELECT 123, 124, 125, 127 FROM rdb$database
	UNION ALL
	SELECT 124, 125, 126, 128 FROM rdb$database
	UNION ALL
	SELECT 125, 126, 127, 129 FROM rdb$database
	UNION ALL
	SELECT 126, 127, 128, 130 FROM rdb$database
	UNION ALL
	SELECT 127, 128, 129, 131 FROM rdb$database
	UNION ALL
	SELECT 128, 129, 130, 132 FROM rdb$database
	UNION ALL
	SELECT 129, 130, 131, 133 FROM rdb$database
	UNION ALL
	SELECT 130, 131, 132, 134 FROM rdb$database
	UNION ALL
	SELECT 131, 132, 133, 135 FROM rdb$database
	UNION ALL
	SELECT 132, 133, 134, 136 FROM rdb$database
	UNION ALL
	SELECT 133, 134, 135, 137 FROM rdb$database
	UNION ALL
	SELECT 134, 135, 136, 138 FROM rdb$database
	UNION ALL
	SELECT 135, 136, 137, 139 FROM rdb$database
	UNION ALL
	SELECT 136, 137, 138, 140 FROM rdb$database
	UNION ALL
	SELECT 137, 138, 139, 141 FROM rdb$database
	UNION ALL
	SELECT 138, 139, 140, 142 FROM rdb$database
	UNION ALL
	SELECT 139, 140, 141, 143 FROM rdb$database
	UNION ALL
	SELECT 140, 141, 142, 144 FROM rdb$database
	UNION ALL
	SELECT 141, 142, 143, 145 FROM rdb$database
	UNION ALL
	SELECT 142, 143, 144, 146 FROM rdb$database
	UNION ALL
	SELECT 143, 144, 145, 147 FROM rdb$database
	UNION ALL
	SELECT 144, 145, 146, 148 FROM rdb$database
	UNION ALL
	SELECT 145, 146, 147, 149 FROM rdb$database
	UNION ALL
	SELECT 146, 147, 148, 150 FROM rdb$database
	UNION ALL
	SELECT 147, 148, 149, 151 FROM rdb$database
	UNION ALL
	SELECT 148, 149, 150, 152 FROM rdb$database
	UNION ALL
	SELECT 149, 150, 151, 153 FROM rdb$database
	UNION ALL
	SELECT 150, 151, 152, 154 FROM rdb$database
	UNION ALL
	SELECT 151, 152, 153, 155 FROM rdb$database
	UNION ALL
	SELECT 152, 153, 154, 156 FROM rdb$database
	UNION ALL
	SELECT 153, 154, 155, 157 FROM rdb$database
	UNION ALL
	SELECT 154, 155, 156, 158 FROM rdb$database
	UNION ALL
	SELECT 155, 156, 157, 159 FROM rdb$database
	UNION ALL
	SELECT 156, 157, 158, 160 FROM rdb$database
	UNION ALL
	SELECT 157, 158, 159, 161 FROM rdb$database
	UNION ALL
	SELECT 158, 159, 160, 162 FROM rdb$database
	UNION ALL
	SELECT 159, 160, 161, 163 FROM rdb$database
	UNION ALL
	SELECT 160, 161, 162, 164 FROM rdb$database
	UNION ALL
	SELECT 161, 162, 163, 165 FROM rdb$database
	UNION ALL
	SELECT 162, 163, 164, 166 FROM rdb$database
	UNION ALL
	SELECT 163, 164, 165, 167 FROM rdb$database
	UNION ALL
	SELECT 164, 165, 166, 168 FROM rdb$database
	UNION ALL
	SELECT 165, 166, 167, 169 FROM rdb$database
	UNION ALL
	SELECT 166, 167, 168, 170 FROM rdb$database
	UNION ALL
	SELECT 167, 168, 169, 171 FROM rdb$database
	UNION ALL
	SELECT 168, 169, 170, 172 FROM rdb$database
	UNION ALL
	SELECT 169, 170, 171, 173 FROM rdb$database
	UNION ALL
	SELECT 170, 171, 172, 174 FROM rdb$database
	UNION ALL
	SELECT 171, 172, 173, 175 FROM rdb$database
	UNION ALL
	SELECT 172, 173, 174, 176 FROM rdb$database
	UNION ALL
	SELECT 173, 174, 175, 177 FROM rdb$database
	UNION ALL
	SELECT 174, 175, 176, 178 FROM rdb$database
	UNION ALL
	SELECT 175, 176, 177, 179 FROM rdb$database
	UNION ALL
	SELECT 176, 177, 178, 180 FROM rdb$database
	UNION ALL
	SELECT 177, 178, 179, 181 FROM rdb$database
	UNION ALL
	SELECT 178, 179, 180, 182 FROM rdb$database
	UNION ALL
	SELECT 179, 180, 181, 183 FROM rdb$database
	UNION ALL
	SELECT 180, 181, 182, 184 FROM rdb$database
	UNION ALL
	SELECT 181, 182, 183, 185 FROM rdb$database
	UNION ALL
	SELECT 182, 183, 184, 186 FROM rdb$database
	UNION ALL
	SELECT 183, 184, 185, 187 FROM rdb$database
	UNION ALL
	SELECT 184, 185, 186, 188 FROM rdb$database
	UNION ALL
	SELECT 185, 186, 187, 189 FROM rdb$database
	UNION ALL
	SELECT 186, 187, 188, 190 FROM rdb$database
	UNION ALL
	SELECT 187, 188, 189, 191 FROM rdb$database
	UNION ALL
	SELECT 188, 189, 190, 192 FROM rdb$database
	UNION ALL
	SELECT 189, 190, 191, 193 FROM rdb$database
	UNION ALL
	SELECT 190, 191, 192, 194 FROM rdb$database
	UNION ALL
	SELECT 191, 192, 193, 195 FROM rdb$database
	UNION ALL
	SELECT 192, 193, 194, 196 FROM rdb$database
	UNION ALL
	SELECT 193, 194, 195, 197 FROM rdb$database
	UNION ALL
	SELECT 194, 195, 196, 198 FROM rdb$database
	UNION ALL
	SELECT 195, 196, 197, 199 FROM rdb$database
	UNION ALL
	SELECT 196, 197, 198, 200 FROM rdb$database
	UNION ALL
	SELECT 197, 198, 199, 201 FROM rdb$database
	UNION ALL
	SELECT 198, 199, 200, 202 FROM rdb$database
	UNION ALL
	SELECT 199, 200, 201, 203 FROM rdb$database
	UNION ALL
	SELECT 200, 201, 202, 204 FROM rdb$database
	UNION ALL
	SELECT 201, 202, 203, 205 FROM rdb$database
	UNION ALL
	SELECT 202, 203, 204, 206 FROM rdb$database
	UNION ALL
	SELECT 203, 204, 205, 207 FROM rdb$database
	UNION ALL
	SELECT 204, 205, 206, 208 FROM rdb$database
	UNION ALL
	SELECT 205, 206, 207, 209 FROM rdb$database
	UNION ALL
	SELECT 206, 207, 208, 210 FROM rdb$database
	UNION ALL
	SELECT 207, 208, 209, 211 FROM rdb$database
	UNION ALL
	SELECT 208, 209, 210, 212 FROM rdb$database
	UNION ALL
	SELECT 209, 210, 211, 213 FROM rdb$database
	UNION ALL
	SELECT 210, 211, 212, 214 FROM rdb$database
	UNION ALL
	SELECT 211, 212, 213, 215 FROM rdb$database
	UNION ALL
	SELECT 212, 213, 214, 216 FROM rdb$database
	UNION ALL
	SELECT 213, 214, 215, 217 FROM rdb$database
	UNION ALL
	SELECT 214, 215, 216, 218 FROM rdb$database
	UNION ALL
	SELECT 215, 216, 217, 219 FROM rdb$database
	UNION ALL
	SELECT 216, 217, 218, 220 FROM rdb$database
	UNION ALL
	SELECT 217, 218, 219, 221 FROM rdb$database
	UNION ALL
	SELECT 218, 219, 220, 222 FROM rdb$database
	UNION ALL
	SELECT 219, 220, 221, 223 FROM rdb$database
	UNION ALL
	SELECT 220, 221, 222, 224 FROM rdb$database
	UNION ALL
	SELECT 221, 222, 223, 225 FROM rdb$database
	UNION ALL
	SELECT 222, 223, 224, 226 FROM rdb$database
	UNION ALL
	SELECT 223, 224, 225, 227 FROM rdb$database
	UNION ALL
	SELECT 224, 225, 226, 228 FROM rdb$database
	UNION ALL
	SELECT 225, 226, 227, 229 FROM rdb$database
	UNION ALL
	SELECT 226, 227, 228, 230 FROM rdb$database
	UNION ALL
	SELECT 227, 228, 229, 231 FROM rdb$database
	UNION ALL
	SELECT 228, 229, 230, 232 FROM rdb$database
	UNION ALL
	SELECT 229, 230, 231, 233 FROM rdb$database
	UNION ALL
	SELECT 230, 231, 232, 234 FROM rdb$database
	UNION ALL
	SELECT 231, 232, 233, 235 FROM rdb$database
	UNION ALL
	SELECT 232, 233, 234, 236 FROM rdb$database
	UNION ALL
	SELECT 233, 234, 235, 237 FROM rdb$database
	UNION ALL
	SELECT 234, 235, 236, 238 FROM rdb$database
	UNION ALL
	SELECT 235, 236, 237, 239 FROM rdb$database
	UNION ALL
	SELECT 236, 237, 238, 240 FROM rdb$database
	UNION ALL
	SELECT 237, 238, 239, 241 FROM rdb$database
	UNION ALL
	SELECT 238, 239, 240, 242 FROM rdb$database
	UNION ALL
	SELECT 239, 240, 241, 243 FROM rdb$database
	UNION ALL
	SELECT 240, 241, 242, 244 FROM rdb$database
	UNION ALL
	SELECT 241, 242, 243, 245 FROM rdb$database
	UNION ALL
	SELECT 242, 243, 244, 246 FROM rdb$database
	UNION ALL
	SELECT 243, 244, 245, 247 FROM rdb$database
	UNION ALL
	SELECT 244, 245, 246, 248 FROM rdb$database
	UNION ALL
	SELECT 245, 246, 247, 249 FROM rdb$database
	UNION ALL
	SELECT 246, 247, 248, 250 FROM rdb$database
	UNION ALL
	SELECT 247, 248, 249, 251 FROM rdb$database
	UNION ALL
	SELECT 248, 249, 250, 252 FROM rdb$database
	UNION ALL
	SELECT 249, 250, 251, 253 FROM rdb$database
	UNION ALL
	SELECT 250, 251, 252, 254 FROM rdb$database
	UNION ALL
	SELECT 251, 252, 253, 255 FROM rdb$database
	UNION ALL
	SELECT 252, 253, 254, 256 FROM rdb$database
	UNION ALL
	SELECT 253, 254, 255, 257 FROM rdb$database
	UNION ALL
	SELECT 254, 255, 256, 258 FROM rdb$database) "Source"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	"Source"."Id",
	"Source"."Field1",
	"Source"."Field2",
	"Source"."Field4"
)

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."Field2",
	"t1"."Field3",
	"t1"."Field4",
	"t1"."Field5"
FROM
	"TestMerge1" "t1"
ORDER BY
	"t1"."Id"

