(240676) SELECT 
	t240676.Id = t240675.Id
FROM [DctSetpointtype(240675)] as t240675 (spt)
		LEFT JOIN (
			[VWellTree(240678)] as t240678 (t2)
				INNER JOIN [DctOu(240680)] as t240680 (tp2) ON ({t240678.ShopId?}? = {t240680.Id})
				LEFT JOIN [UacUsersDatagroup(240683)] as t240683 (cudg) ON ({t240680.Id} = {t240683.DatagroupId} AND {t240683.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240688)] as t240688 (oudg) ON ({t240680.ParentId?}? = {t240688.DatagroupId} AND {t240688.UserId} = 150 AND {t240688.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240708)] as t240708 (d) ON ({t240678.WellId?}? = {t240708.WellId})
		)  ON ({t240708.SetpointtypeId} = {t240675.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240683.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t240688.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
