(243480) SELECT 
	t243480.Id = t243479.Id
FROM [DctSetpointtype(243479)] as t243479 (spt)
		LEFT JOIN (
			[VWellTree(243482)] as t243482 (t2)
				INNER JOIN [DctOu(243484)] as t243484 (tp2) ON ({t243482.ShopId?}? = {t243484.Id})
				LEFT JOIN [UacUsersDatagroup(243487)] as t243487 (cudg) ON ({t243484.Id} = {t243487.DatagroupId} AND {t243487.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(243492)] as t243492 (oudg) ON ({t243484.ParentId?}? = {t243492.DatagroupId} AND {t243492.UserId} = 150 AND {t243492.Inheritablepermission} > 0)
				INNER JOIN [Deviation(243512)] as t243512 (d) ON ({t243482.WellId?}? = {t243512.WellId})
		)  ON ({t243512.SetpointtypeId} = {t243479.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t243487.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t243492.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
