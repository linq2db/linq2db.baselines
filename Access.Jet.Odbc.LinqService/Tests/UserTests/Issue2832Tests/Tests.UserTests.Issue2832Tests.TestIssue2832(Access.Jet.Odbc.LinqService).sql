(307278) SELECT 
	t307278.Id = t307277.Id
FROM [DctSetpointtype(307277)] as t307277 (spt)
		LEFT JOIN (
			(307314) SELECT 
				t307314.SetpointtypeId = t307310.SetpointtypeId
			FROM [VWellTree(307280)] as t307280 (t2)
					INNER JOIN [DctOu(307282)] as t307282 (tp2) ON ({t307280.ShopId?}? = {t307282.Id})
					LEFT JOIN [UacUsersDatagroup(307285)] as t307285 (cudg) ON ({t307282.Id} = {t307285.DatagroupId} AND {t307285.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307290)] as t307290 (oudg) ON ({t307282.ParentId?}? = {t307290.DatagroupId} AND {t307290.UserId} = 150 AND {t307290.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307310)] as t307310 (d) ON ({t307280.WellId?}? = {t307310.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307285.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307290.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307314 (t2_1) ON ({t307314.SetpointtypeId?} = {t307277.Id})
