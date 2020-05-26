class Worker < ApplicationRecord
    has_many :beneficiaries

    accepts_nested_attributes_for :beneficiaries


    mount_uploader :avatar, AvatarUploader
    mount_uploader :proof_address, ProofAddressUploader
    mount_uploader :banorte_contract, BanorteContractUploader
    mount_uploader :imss_discharge_notice, ImssDischargeNoticeUploader
    mount_uploader :infonavit_retention_notice, InfonavitRetentionNoticeUploader
    mount_uploader :work_contract, WorkContractUploader
    mount_uploaders :identification, IdentificationUploader
    mount_uploader :imss_format, ImssFormatUploader
end