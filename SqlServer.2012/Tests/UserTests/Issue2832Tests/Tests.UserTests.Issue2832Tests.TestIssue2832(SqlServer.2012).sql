(240482) SELECT 
	t240482.Id = t240481.Id
FROM [DctSetpointtype(240481)] as t240481 (spt)
		LEFT JOIN (
			[VWellTree(240484)] as t240484 (t2)
				INNER JOIN [DctOu(240486)] as t240486 (tp2) ON ({t240484.ShopId?}? = {t240486.Id})
				LEFT JOIN [UacUsersDatagroup(240489)] as t240489 (cudg) ON ({t240486.Id} = {t240489.DatagroupId} AND {t240489.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240494)] as t240494 (oudg) ON ({t240486.ParentId?}? = {t240494.DatagroupId} AND {t240494.UserId} = 150 AND {t240494.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240514)] as t240514 (d) ON ({t240484.WellId?}? = {t240514.WellId})
		)  ON ({t240514.SetpointtypeId} = {t240481.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240489.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t240494.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
