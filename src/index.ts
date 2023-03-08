import user from '@/controllers/user'
console.log(`hello ${user.getName() || 'friendo'}`);
setInterval(() => { console.log(`Time: ${Date.now()}`) }, 1000) 
