(245728) SELECT 
	t245728.Id = t245727.Id
FROM [DctSetpointtype(245727)] as t245727 (spt)
		LEFT JOIN (
			[VWellTree(245730)] as t245730 (t2)
				INNER JOIN [DctOu(245732)] as t245732 (tp2) ON ({t245730.ShopId?}? = {t245732.Id})
				LEFT JOIN [UacUsersDatagroup(245735)] as t245735 (cudg) ON ({t245732.Id} = {t245735.DatagroupId} AND {t245735.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245740)] as t245740 (oudg) ON ({t245732.ParentId?}? = {t245740.DatagroupId} AND {t245740.UserId} = 150 AND {t245740.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245760)] as t245760 (d) ON ({t245730.WellId?}? = {t245760.WellId})
		)  ON ({t245760.SetpointtypeId} = {t245727.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245735.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245740.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
