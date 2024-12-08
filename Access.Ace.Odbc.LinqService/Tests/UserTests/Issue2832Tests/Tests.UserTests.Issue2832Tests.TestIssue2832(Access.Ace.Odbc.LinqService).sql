(307282) SELECT 
	t307282.Id = t307281.Id
FROM [DctSetpointtype(307281)] as t307281 (spt)
		LEFT JOIN (
			(307318) SELECT 
				t307318.SetpointtypeId = t307314.SetpointtypeId
			FROM [VWellTree(307284)] as t307284 (t2)
					INNER JOIN [DctOu(307286)] as t307286 (tp2) ON ({t307284.ShopId?}? = {t307286.Id})
					LEFT JOIN [UacUsersDatagroup(307289)] as t307289 (cudg) ON ({t307286.Id} = {t307289.DatagroupId} AND {t307289.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307294)] as t307294 (oudg) ON ({t307286.ParentId?}? = {t307294.DatagroupId} AND {t307294.UserId} = 150 AND {t307294.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307314)] as t307314 (d) ON ({t307284.WellId?}? = {t307314.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307289.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307294.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307318 (t2_1) ON ({t307318.SetpointtypeId?} = {t307281.Id})
