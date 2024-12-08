(491490) SELECT 
	t491490.Id = t491489.Id
FROM [DctSetpointtype(491489)] as t491489 (spt)
		LEFT JOIN (
			[VWellTree(491492)] as t491492 (t2)
				INNER JOIN [DctOu(491494)] as t491494 (tp2) ON ({t491492.ShopId?}? = {t491494.Id})
				LEFT JOIN [UacUsersDatagroup(491497)] as t491497 (cudg) ON ({t491494.Id} = {t491497.DatagroupId} AND {t491497.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491502)] as t491502 (oudg) ON ({t491494.ParentId?}? = {t491502.DatagroupId} AND {t491502.UserId} = 150 AND {t491502.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491522)] as t491522 (d) ON ({t491492.WellId?}? = {t491522.WellId})
		)  ON ({t491522.SetpointtypeId} = {t491489.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491497.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t491502.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
