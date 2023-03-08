
const User = {
    getName():string|null{
        return process.env.USER||null;
    }
}


export default User