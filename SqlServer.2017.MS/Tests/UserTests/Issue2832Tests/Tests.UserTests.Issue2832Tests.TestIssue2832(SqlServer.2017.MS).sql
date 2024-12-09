(245283) SELECT 
	t245283.Id = t245282.Id
FROM [DctSetpointtype(245282)] as t245282 (spt)
		LEFT JOIN (
			[VWellTree(245285)] as t245285 (t2)
				INNER JOIN [DctOu(245287)] as t245287 (tp2) ON ({t245285.ShopId?}? = {t245287.Id})
				LEFT JOIN [UacUsersDatagroup(245290)] as t245290 (cudg) ON ({t245287.Id} = {t245290.DatagroupId} AND {t245290.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245295)] as t245295 (oudg) ON ({t245287.ParentId?}? = {t245295.DatagroupId} AND {t245295.UserId} = 150 AND {t245295.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245315)] as t245315 (d) ON ({t245285.WellId?}? = {t245315.WellId})
		)  ON ({t245315.SetpointtypeId} = {t245282.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245290.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245295.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
