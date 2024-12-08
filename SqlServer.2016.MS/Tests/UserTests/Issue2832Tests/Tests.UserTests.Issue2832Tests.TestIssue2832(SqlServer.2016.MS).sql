(244389) SELECT 
	t244389.Id = t244388.Id
FROM [DctSetpointtype(244388)] as t244388 (spt)
		LEFT JOIN (
			[VWellTree(244391)] as t244391 (t2)
				INNER JOIN [DctOu(244393)] as t244393 (tp2) ON ({t244391.ShopId?}? = {t244393.Id})
				LEFT JOIN [UacUsersDatagroup(244396)] as t244396 (cudg) ON ({t244393.Id} = {t244396.DatagroupId} AND {t244396.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244401)] as t244401 (oudg) ON ({t244393.ParentId?}? = {t244401.DatagroupId} AND {t244401.UserId} = 150 AND {t244401.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244421)] as t244421 (d) ON ({t244391.WellId?}? = {t244421.WellId})
		)  ON ({t244421.SetpointtypeId} = {t244388.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244396.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t244401.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
