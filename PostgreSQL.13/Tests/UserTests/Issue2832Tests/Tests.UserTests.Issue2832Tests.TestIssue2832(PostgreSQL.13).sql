(106727) SELECT 
	t106727.Id = t106726.Id
FROM [DctSetpointtype(106726)] as t106726 (spt)
		LEFT JOIN (
			[VWellTree(106729)] as t106729 (t2)
				INNER JOIN [DctOu(106731)] as t106731 (tp2) ON ({t106729.ShopId?}? = {t106731.Id})
				LEFT JOIN [UacUsersDatagroup(106734)] as t106734 (cudg) ON ({t106731.Id} = {t106734.DatagroupId} AND {t106734.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106739)] as t106739 (oudg) ON ({t106731.ParentId?}? = {t106739.DatagroupId} AND {t106739.UserId} = 150 AND {t106739.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106759)] as t106759 (d) ON ({t106729.WellId?}? = {t106759.WellId})
		)  ON ({t106759.SetpointtypeId} = {t106726.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106734.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106739.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
