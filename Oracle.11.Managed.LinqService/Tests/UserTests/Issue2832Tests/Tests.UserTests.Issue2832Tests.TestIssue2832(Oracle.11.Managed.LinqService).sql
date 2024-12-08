(194939) SELECT 
	t194939.Id = t194938.Id
FROM [DctSetpointtype(194938)] as t194938 (spt)
		LEFT JOIN (
			[VWellTree(194941)] as t194941 (t2)
				INNER JOIN [DctOu(194943)] as t194943 (tp2) ON ({t194941.ShopId?}? = {t194943.Id})
				LEFT JOIN [UacUsersDatagroup(194946)] as t194946 (cudg) ON ({t194943.Id} = {t194946.DatagroupId} AND {t194946.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(194951)] as t194951 (oudg) ON ({t194943.ParentId?}? = {t194951.DatagroupId} AND {t194951.UserId} = 150 AND {t194951.Inheritablepermission} > 0)
				INNER JOIN [Deviation(194971)] as t194971 (d) ON ({t194941.WellId?}? = {t194971.WellId})
		)  ON ({t194971.SetpointtypeId} = {t194938.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t194946.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t194951.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
