package org.paasta.caas.dashboard.workload.deployments;

import lombok.Data;
import org.paasta.caas.dashboard.common.model.CommonMetaData;
import org.paasta.caas.dashboard.workload.deployments.support.DeploymentsSpec;
import org.paasta.caas.dashboard.workload.deployments.support.DeploymentsStatus;

/**
 * Deployments Model 클래스
 *
 * @author Hyungu Cho
 * @version 1.0
 * @since 2018.08.13
 */
@Data
public class Deployments {
    private String resultCode;
    private String resultMessage;

    private CommonMetaData metadata;
    private DeploymentsSpec spec;
    private DeploymentsStatus status;
}
