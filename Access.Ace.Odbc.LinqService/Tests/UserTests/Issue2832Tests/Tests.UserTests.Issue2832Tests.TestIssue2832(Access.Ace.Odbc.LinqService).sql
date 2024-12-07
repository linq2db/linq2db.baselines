(307283) SELECT 
	t307283.Id = t307282.Id
FROM [DctSetpointtype(307282)] as t307282 (spt)
		LEFT JOIN (
			(307319) SELECT 
				t307319.SetpointtypeId = t307315.SetpointtypeId
			FROM [VWellTree(307285)] as t307285 (t2)
					INNER JOIN [DctOu(307287)] as t307287 (tp2) ON ({t307285.ShopId?}? = {t307287.Id})
					LEFT JOIN [UacUsersDatagroup(307290)] as t307290 (cudg) ON ({t307287.Id} = {t307290.DatagroupId} AND {t307290.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307295)] as t307295 (oudg) ON ({t307287.ParentId?}? = {t307295.DatagroupId} AND {t307295.UserId} = 150 AND {t307295.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307315)] as t307315 (d) ON ({t307285.WellId?}? = {t307315.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307290.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307295.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307319 (t2_1) ON ({t307319.SetpointtypeId?} = {t307282.Id})
