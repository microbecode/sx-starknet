#[starknet::contract]
mod VanillaVotingStrategy {
    use sx::interfaces::IVotingStrategy;
    use sx::types::UserAddress;
    use starknet::ContractAddress;

    #[storage]
    struct Storage {}

    #[external(v0)]
    impl VanillaVotingStrategy of IVotingStrategy<ContractState> {
        fn get_voting_power(
            self: @ContractState,
            block_number: u32,
            voter: UserAddress,
            params: Array<felt252>,
            user_params: Array<felt252>,
        ) -> u256 {
            u256 { low: 1_u128, high: 0_u128 }
        }
    }
}