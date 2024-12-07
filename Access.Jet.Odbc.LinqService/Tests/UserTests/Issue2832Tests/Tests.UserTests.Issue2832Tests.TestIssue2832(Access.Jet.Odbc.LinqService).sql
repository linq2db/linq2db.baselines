(307307) SELECT 
	t307307.Id = t307306.Id
FROM [DctSetpointtype(307306)] as t307306 (spt)
		LEFT JOIN (
			(307343) SELECT 
				t307343.SetpointtypeId = t307339.SetpointtypeId
			FROM [VWellTree(307309)] as t307309 (t2)
					INNER JOIN [DctOu(307311)] as t307311 (tp2) ON ({t307309.ShopId?}? = {t307311.Id})
					LEFT JOIN [UacUsersDatagroup(307314)] as t307314 (cudg) ON ({t307311.Id} = {t307314.DatagroupId} AND {t307314.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307319)] as t307319 (oudg) ON ({t307311.ParentId?}? = {t307319.DatagroupId} AND {t307319.UserId} = 150 AND {t307319.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307339)] as t307339 (d) ON ({t307309.WellId?}? = {t307339.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307314.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307319.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307343 (t2_1) ON ({t307343.SetpointtypeId?} = {t307306.Id})
