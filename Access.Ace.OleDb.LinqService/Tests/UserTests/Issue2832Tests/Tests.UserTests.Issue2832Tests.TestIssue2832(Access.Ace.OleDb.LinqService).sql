(307236) SELECT 
	t307236.Id = t307235.Id
FROM [DctSetpointtype(307235)] as t307235 (spt)
		LEFT JOIN (
			(307272) SELECT 
				t307272.SetpointtypeId = t307268.SetpointtypeId
			FROM [VWellTree(307238)] as t307238 (t2)
					INNER JOIN [DctOu(307240)] as t307240 (tp2) ON ({t307238.ShopId?}? = {t307240.Id})
					LEFT JOIN [UacUsersDatagroup(307243)] as t307243 (cudg) ON ({t307240.Id} = {t307243.DatagroupId} AND {t307243.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307248)] as t307248 (oudg) ON ({t307240.ParentId?}? = {t307248.DatagroupId} AND {t307248.UserId} = 150 AND {t307248.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307268)] as t307268 (d) ON ({t307238.WellId?}? = {t307268.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307243.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307248.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307272 (t2_1) ON ({t307272.SetpointtypeId?} = {t307235.Id})
