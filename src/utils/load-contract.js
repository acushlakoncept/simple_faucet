export const loadContract = async (name) => {
    const res = await fetch(`/contracts/${name}.json`);
    const contractArtifact = await res.json;

    return {
        contract: contractArtifact,
    }
}