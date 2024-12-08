(245373) SELECT 
	t245373.Id = t245372.Id
FROM [DctSetpointtype(245372)] as t245372 (spt)
		LEFT JOIN (
			[VWellTree(245375)] as t245375 (t2)
				INNER JOIN [DctOu(245377)] as t245377 (tp2) ON ({t245375.ShopId?}? = {t245377.Id})
				LEFT JOIN [UacUsersDatagroup(245380)] as t245380 (cudg) ON ({t245377.Id} = {t245380.DatagroupId} AND {t245380.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245385)] as t245385 (oudg) ON ({t245377.ParentId?}? = {t245385.DatagroupId} AND {t245385.UserId} = 150 AND {t245385.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245405)] as t245405 (d) ON ({t245375.WellId?}? = {t245405.WellId})
		)  ON ({t245405.SetpointtypeId} = {t245372.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245380.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245385.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
