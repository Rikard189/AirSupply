class Worker < ApplicationRecord
    has_one :address, dependent: :destroy

    mount_uploader :avatar, AvatarUploader
    mount_uploader :proof_address, ProofAddressUploader
    mount_uploaders :identification, IdentificationUploader
end